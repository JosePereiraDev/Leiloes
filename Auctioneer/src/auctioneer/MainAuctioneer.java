/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package auctioneer;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Jpereira
 */
public class MainAuctioneer {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try {
            Runtime rt1 = Runtime.getRuntime();
            Runtime rt2 = Runtime.getRuntime();
            String start_platform="java jade.Boot -gui";
            String start_agent="java jade.Boot -container auctioneer:auctioneer.Auctioneer ";
            
            Process pr1 = rt1.exec(start_platform);
            Thread.sleep(4000);
            Process pr2 = rt2.exec(start_agent);
            Thread.sleep(10000);
            pr2.destroy();
            pr1.destroy();
        } catch (IOException ex) {
            Logger.getLogger(MainAuctioneer.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InterruptedException ex) {
            Logger.getLogger(MainAuctioneer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
