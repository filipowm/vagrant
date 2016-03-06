var app = 'app_name';
db = db.getSiblingDB(app);
var user = db.getUser('app_user');
if (typeof user === 'undefined' || user == null) {
	db.createUser( { "user" : "app_user", "pwd": "user_password", "roles" : [ "readWrite" ] } );
}						 