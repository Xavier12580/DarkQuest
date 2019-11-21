#ifndef __E906LEGACYGEN_H__
#define __E906LEGACYGEN_H__

#include <string>
#include <TGeoMaterial.h>
#include <TString.h>
#include <TH1F.h>
#include <TFile.h>
#include <TMath.h>
#include <TTree.h>
#include <fun4all/SubsysReco.h>
#include <iostream>

class PHCompositeNode;
class E906VertexGen;
class E1039PhysicsGen;


class TFile;
class TTree;

class E906LegacyGen : public SubsysReco
{
public:
    E906LegacyGen(const std::string& name = "E906LegacyGen");
    virtual ~E906LegacyGen();

    int Init(PHCompositeNode* topNode);
    int InitRun(PHCompositeNode* topNode);
    int process_event(PHCompositeNode* topNode);
    int ResetEvent(PHCompositeNode* topNode);
    int End(PHCompositeNode* topNode);

    //Configuraation of the vertex distribution
    void enableTarget() { _targetVtx = true; }
    void enableDump()   { _dumpVtx = true;   }
    void enableOthers() { _otherVtx = true;  }

 
    //! phase space constrain
    //@{
    Double_t x1Min;
    Double_t x1Max;
    Double_t x2Min;
    Double_t x2Max;
    Double_t xfMin;
    Double_t xfMax;
    Double_t massMin;
    Double_t massMax;
    Double_t cosThetaMin;
    Double_t cosThetaMax;
    Double_t zOffsetMin;
    Double_t zOffsetMax;
    //@}

    //! Run-accumulated variables
    //@{
    Int_t nEventsThrown;
    Int_t nEventsPhysics;
    Int_t nEventsAccepted;
    //@}

    //configuration for the input and output
    void ResetVars();
    void InitTree();
    
 
    //void setvtxx(double vx);
    //double  getvtxx();
  


private:

    E906VertexGen* _vertexGen;
    E1039PhysicsGen* _physicsGen;

    bool _targetVtx;
    bool _dumpVtx;
    bool _otherVtx;
    
    std::string _out_name;
    
    TFile *file;
    TH1F * histo;
    TTree *truth_tree;
    float truth_vtxx,truth_vtxy,truth_vtxz ;
    //float truth_vtxx1,truth_vtxy1,truth_vtxz1 ;  
   

};

#endif
