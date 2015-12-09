import java.rmi.Remote;
import java.rmi.RemoteException;

public interface InterfazRMI extends Remote{
	public int factorial(int numero) throws RemoteException;
}
