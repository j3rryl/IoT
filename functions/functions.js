var date = new Date(msg.payload);
msg.payload = date.toString();
return msg;