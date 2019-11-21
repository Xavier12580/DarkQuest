#ifndef __E906VERTEXGEN_H__
#define __E906VERTEXGEN_H__

#include <vector>
#include <TString.h>
#include <TGeoManager.h>
#include <TGeoMedium.h>
#include <TGeoNode.h>
#include <TF2.h>
#include <TVector3.h>
#include <TH1F.h>
#include "BeamlineObject.h"

class PHCompositeNode;
class BeamlineObject;

class E906VertexGen
{
public:
    E906VertexGen();
    ~E906VertexGen();;


    //Initialize files
    void Initfile();

    //Initialize at the begining of Run
    void InitRun(PHCompositeNode* topNode);

    //Tree traversal
    void traverse(TGeoNode* node, double&xvertex,double&yvertex,double&zvertex);


    //get the vertex generated
    // TVector3 generateVertex();
    double generateVertex();

    //use the beam profile to generate
    void generateVtxPerp(double& x, double& y);

    //do the actual sampling
    void findInteractingPiece();

    //get the proton/neutron ratio of the piece, must be called after generateVertex
    double getPARatio() { return interactables[index].protonPerc; }
    
    //get the relative luminosity on this target
    //double getLuminosity() { return p_config->biasVertexGen ? interactables[index].prob : probSum; }
    double getLuminosity() { return  probSum; }

   //get the reference to the chosen objects
   //const BeamlineObject& getInteractable() { return interactables[index]; } 

private:
    //Array of beamline objects
    unsigned int nPieces;
    double probSum;
    double accumulatedProbs[100]; //for now set to no more than 100 objects
 
      //vector of the interactable stuff
    std::vector<BeamlineObject> interactables;


    //the index of the piece that is chosen
    int index;

    //Beam profile
    TF2* beamProfile;

    //flag to test if the generator has been initialized
    bool inited;

    // flag to use beamProfile function
    bool beam_profile;

  
};

#endif
