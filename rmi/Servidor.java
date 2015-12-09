import java.rmi.Naming;

public class Servidor{
	public Servidor(){
		try{
			InterfazRMI interfaz = new ImplementacionRMI();
			Naming.rebind("rmi://localhost/factorial", interfaz);
			System.out.println("El servidor se ha levantado");
		} catch(Exception ex){

		}

	}

	public static void main(String [] args){
		new Servidor();
	}
}
