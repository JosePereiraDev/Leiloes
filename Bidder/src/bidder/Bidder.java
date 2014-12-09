/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bidder;

import jade.core.Agent;


    
public class Bidder extends Agent{
    Agent myAgent = this;
    public void setup(){
        //myAgent.addBehaviour(new recebemensagem());
        myAgent.addBehaviour(new regist(myAgent));
    }
}
