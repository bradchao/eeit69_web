package tw.brad.tutor;

import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import org.json.JSONObject;

import netscape.javascript.JSObject;

@ServerEndpoint(value = "/myserver")
public class MyServer {
	private static HashSet<Session> sessions;
	private static HashMap<String, Session> users;
	private static HashMap<String, String> userNames;
	
	public MyServer() {
		System.out.println("MyServer()");
		if (sessions == null) {
			sessions = new HashSet<>();
			users = new HashMap<>();
			userNames = new HashMap<>();
		}
	}
	
	@OnOpen
	public void onOpen(Session session) {
		System.out.println("onOpen():" + session.getId());
		session.setMaxIdleTimeout(2*60*1000);
		if (sessions.add(session)) {
			users.put(session.getId(), session);
		}
		System.out.println("count:" + sessions.size());
	}
	
	@OnMessage
	public void onMessage(String message, Session session) {
		System.out.println(session.getId() + ":" + message);
	
		JSONObject root = new JSONObject(message);
		if (root.getInt("mode") == 1) {
			userNames.put(session.getId(),
					root.getString("user"));
		}else if (root.getInt("mode") == 2) {
			String mesg = root.getString("message");
			
			JSONObject jsonObj = new JSONObject();
			jsonObj.put("user", userNames.get(session.getId()));
			jsonObj.put("message", mesg);
			
			for (Session userSession : sessions) {
				try {
					userSession.getBasicRemote()
						.sendText(jsonObj.toString());
				} catch (IOException e) {
					System.out.println(e);
				}
			}
			
			
		}
	
	}
	
	@OnClose
	public void onClose(Session session) {
		System.out.println("onClose():" + session.getId());
		users.remove(session.getId());
		userNames.remove(session.getId());
		sessions.remove(session);
		System.out.println("count:" + sessions.size());
	}
	
	@OnError
	public void onError(Session session, Throwable t) {
		System.out.println("onError():" + session.getId());
		users.remove(session.getId());
		userNames.remove(session.getId());
		sessions.remove(session);
		System.out.println("count:" + sessions.size());
	}
	
	
}
