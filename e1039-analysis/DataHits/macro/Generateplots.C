void Generateplots()
{
	TChain ch("Events");
	ch.Add("output/*");
	TCanvas *canvas1=new TCanvas();
	ch.Draw("dimuon_mass");
	canvas1->Print("dimuon_mass.png");
	TCanvas *canvas2=new TCanvas();
	ch.Draw("dimuon_z_vtx");
	canvas2->Print("dimuon_z_vtx.png");
	delete canvas1;
	delete canvas2;
}
