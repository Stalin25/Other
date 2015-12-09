import java.rmi.server.UnicastRemoteObject;
import java.rmi.RemoteException;

public class ImplementacionRMI extends UnicastRemoteObject implements InterfazRMI{
	public ImplementacionRMI() throws RemoteException{
		
	}

	public int factorial(int numero){
		int factorial=1;
		for(int i=1;i<numero;i++){
			factorial=factorial*i;
		};
		return factorial;
	}
}
