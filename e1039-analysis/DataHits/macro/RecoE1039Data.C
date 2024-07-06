#include <TSystem.h>
#include <top/G4_InsensitiveVolumes.C>
#include <top/G4_SensitiveDetectors.C>

R__LOAD_LIBRARY(libinterface_main)
R__LOAD_LIBRARY(libfun4all)
R__LOAD_LIBRARY(libg4detectors)
R__LOAD_LIBRARY(libg4eval)
R__LOAD_LIBRARY(libcalibrator)
R__LOAD_LIBRARY(libktracker)
R__LOAD_LIBRARY(libanamodule)

/*
 * This macro takes severl external input files to run:
 * 1. geom.root is the standard geometry dump from running the Fun4Sim macro;
 * 2. e906_run7.opts is provided
 * 3. digit_028692_009.root is E906 run6 data, can be found at /pnfs/e906/production/digit/R009/02/86
 *
 * This is an example script intended to demonstrate how to run SQReco in a minimalistic fashion, it is NOT
 * suitable for production use and users should develop their own reconstruction macro for their own analysis.
 * */

int RecoE1039Data(const int nEvents = 1000, const bool do_displaced_tracking = true)
{
  recoConsts *rc = recoConsts::instance();
  rc->set_IntFlag("RUNNUMBER", 6111);  // To select the plane geometry for E906 Run 6.
  rc->set_DoubleFlag("FMAGSTR", -1.8); // -1.054;
  // rc->set_DoubleFlag("KMAGSTR", -1.025); // -0.951;
  rc->set_DoubleFlag("KMAGSTR", 0.4); // -0.951;
  rc->set_CharFlag("TRIGGER_L1", "78");
  rc->set_DoubleFlag("RejectWinDC0", 0.12);
  rc->set_DoubleFlag("RejectWinDC1", 0.25);
  rc->set_DoubleFlag("RejectWinDC2", 0.15);
  rc->set_DoubleFlag("RejectWinDC3p", 0.16);
  rc->set_DoubleFlag("RejectWinDC3m", 0.14);
  rc->set_IntFlag("MaxHitsDC0", 350);
  rc->set_IntFlag("MaxHitsDC1", 350);
  rc->set_IntFlag("MaxHitsDC2", 170);
  rc->set_IntFlag("MaxHitsDC3p", 140);
  rc->set_IntFlag("MaxHitsDC3m", 140);
  // rc->Print();
  if (do_displaced_tracking)
  {
    rc->set_BoolFlag("TRACK_ELECTRONS", true);
    rc->set_BoolFlag("TRACK_DISPLACED", true);
  }

  Fun4AllServer *se = Fun4AllServer::instance();
  // se->Verbosity(100);

  ///
  /// Geometry.  You might create and use "geom.root" instead.
  ///
  PHG4Reco *g4reco = new PHG4Reco();
  g4reco->set_field_map();
  g4reco->SetWorldSizeX(1000);
  g4reco->SetWorldSizeY(1000);
  g4reco->SetWorldSizeZ(5000);
  g4reco->SetWorldShape("G4BOX");
  g4reco->SetWorldMaterial("G4_AIR");
  g4reco->SetPhysicsList("FTFP_BERT");
  SetupInsensitiveVolumes(g4reco);
  SetupSensitiveDetectors(g4reco);
  se->registerSubsystem(g4reco);

  ///
  /// Calibrator
  ///
  CalibHitElementPos *cal_ele_pos = new CalibHitElementPos();
  se->registerSubsystem(cal_ele_pos);

  CalibDriftDist *cal_drift_dist = new CalibDriftDist();
  cal_drift_dist->Verbosity(100);
  se->registerSubsystem(cal_drift_dist);

  ///
  /// Reconstruction
  ///
  SQReco *reco = new SQReco();
  reco->Verbosity(0);
  // reco->set_geom_file_name("geom.root");
  reco->set_enable_KF(true);        // Kalman filter not needed for the track finding, disabling KF saves a lot of initialization time
  reco->setInputTy(SQReco::E1039);  // options are SQReco::E906 and SQReco::E1039
  reco->setFitterTy(SQReco::KFREF); // not relavant for the track finding
  reco->set_evt_reducer_opt("aoc"); // if not provided, event reducer will be using JobOptsSvc to intialize; to turn off, set it to "none"
  reco->set_enable_eval(true);
  reco->set_eval_file_name("eval.root");
  se->registerSubsystem(reco);

  VertexFit *vtx_fit = new VertexFit();
  se->registerSubsystem(vtx_fit);

  ///
  /// AnaModule
  ///
  AnaModule *ana = new AnaModule();
  ana->set_output_filename("ana.root");
  ana->set_reco(true);
  se->registerSubsystem(ana);

  /// Input, output and run.
  ///
  Fun4AllInputManager *in = new Fun4AllDstInputManager("DSTIN");
  in->Verbosity(0);
  // in->fileopen(DST_in.c_str());
  se->registerInputManager(in);

  Fun4AllDstOutputManager *out = new Fun4AllDstOutputManager("DSTOUT", "result.root");
  se->registerOutputManager(out);
  // out->AddNode("SRawEvent");
  // out->AddNode("SRecEvent");
  const std::string fn_list_run = "file_list.txt";
  ifstream ifs(fn_list_run);
  string fn_in;
  int nfile = 0;
  while (ifs >> fn_in)
  {
    // string fn_in = UtilOnline::GetDstFilePath(run);
    cout << 1 << endl;
    cout << fn_in << endl;
    // rc->Print();
    in->fileopen(fn_in);
    se->run(nEvents);
    nfile += 1;
    break;
    if (nfile > 1)
      continue;
  }
  ifs.close();

  PHGeomUtility::ExportGeomtry(se->topNode(), "geom.root");
  rc->WriteToFile("recoConsts.tsv");
  se->End();
  delete se;
  gSystem->Exit(0);
  return 0;
}
