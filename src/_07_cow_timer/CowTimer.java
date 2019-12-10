package _07_cow_timer;
/*
 *    Copyright (c) The League of Amazing Programmers 2013-2019
 *    Level 1
 */

import java.applet.AudioClip;
import java.io.IOException;
import javax.swing.JApplet;

public class CowTimer {
	
	private int seconds;
	
	/* 1. Make a constructor for the CowTimer class that initializes the minutes variable */
	CowTimer(int time){
		this.seconds = time;
	}
	/* 4. Complete the main method of the CowTimerRunner class */

	
	public void setTime(int seconds) {
		this.seconds = seconds;
		System.out.println("Cow time set to " + seconds + " minutes.");
	}

	public void start() throws InterruptedException {
		/*
		 * 2. Count down the seconds, print the current minute then sleep for the number of minutes
		 * using Thread.sleep(int milliseconds). 
		 */
		System.out.println("Started...");
		for (int i = 0; i < seconds; i++) {
			System.out.println("Time left: " + Integer.toString(seconds-i));
			Thread.sleep(1000);
		}
		
		/*
		 * 3. When the timer is finished, use the playSound method to play a moo sound.
		 * You can use the .wav file in the default package, or you can download one
		 * from freesound.org, then drag it into the default package.
		 */
		System.out.println("Time left: " + Integer.toString(0));
		playSound("moo.wav");
		

	}

	private void playSound(String fileName) {
		AudioClip sound = JApplet.newAudioClip(getClass().getResource(fileName));
		sound.play();
	}

	private void speak(String stuffToSay) {
		try {
			Runtime.getRuntime().exec("say " + stuffToSay).waitFor();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
