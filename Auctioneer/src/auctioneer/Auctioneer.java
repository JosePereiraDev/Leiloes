/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package auctioneer;

import jade.core.AID;
import jade.core.Agent;
import jade.core.behaviours.CyclicBehaviour;
import jade.lang.acl.ACLMessage;
import java.util.ArrayList;

public class Auctioneer extends Agent{
    
    Agent myAgent = this;
    AuctioneerView av=new AuctioneerView();
    ArrayList<String> bidders=new ArrayList<>();
    
    public void setup(){
        //myAgent.addBehaviour(new recebemensagem());
        myAgent.addBehaviour(new registbidder(myAgent,av,bidders));
    }
    
    private class recebemensagem extends CyclicBehaviour{

        @Override
        public void action() {
            ACLMessage msg;
            if((msg = myAgent.receive()) != null){
                System.out.println("Recebi a mensagem: "+ msg.getContent() + "\nde:" + msg.getSender().getLocalName());
                
                AID envelope = new AID();
                envelope.setLocalName("envia");
                ACLMessage carta = new ACLMessage(ACLMessage.INFORM);
                carta.setContent("Confirmo que recebi");
                carta.addReceiver(envelope);
                myAgent.send(carta);
                System.out.println("Enviei a resposta!");
                myAgent.removeBehaviour(this);
            }
            
        }
        
    }
    
}
