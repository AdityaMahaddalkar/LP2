import java.rmi.*;
import java.io.*;


public class SearchQuery implements Search, Serializable {
	
	SearchQuery() throws RemoteException{
		super();
	}
	
	@Override
	public String query(String search) throws RemoteException {
		// TODO Auto-generated method stub
		String result;
		if(search.equals("Reflection in Java"))
			result = "Found";
		else
			result = "Not Found";
		
		return result;
	}

}
