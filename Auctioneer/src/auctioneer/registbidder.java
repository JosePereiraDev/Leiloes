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
import jade.lang.acl.MessageTemplate;
import jade.lang.acl.MessageTemplate.MatchExpression;
import java.util.ArrayList;

/**
 *
 * @author Jpereira
 */
public class registbidder extends CyclicBehaviour{
    Agent agent;
    AuctioneerView av;
    ArrayList<String> bidders;
    
    public registbidder(Agent agent,AuctioneerView av,ArrayList<String> bidders){
        this.agent=agent;
        this.av=av;
        this.bidders=bidders;
    }
    @Override
    public void action() {
        ACLMessage msg;
        
            if((msg = agent.receive()) != null){
                System.out.println("Recebi a mensagem: "+ msg.getContent() + "\nde:" + msg.getSender().getLocalName());
                bidders.add(msg.getSender().getLocalName());
                av.updateBidders(bidders);
                //agent.removeBehaviour(this);
            }
    }
    
    
}
