package br.com.fiap.exemplo.client;

import java.rmi.RemoteException;

import br.com.fiap.exemplo.PrimeiroPortTypeProxy;

public class PrimeiroClient {
	
	public static void main(String[] args) {
		PrimeiroPortTypeProxy ws = new PrimeiroPortTypeProxy();
		try {
			System.out.println(ws.boanoite("Danilo"));
		} catch (RemoteException e) {
			e.printStackTrace();
		}
	}

}
