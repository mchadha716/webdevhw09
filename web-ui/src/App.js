import { Container } from 'react-bootstrap';
import { Switch, Route }from 'react-router-dom';
import "./App.scss";
import Users from "./Users";
import Nav from "./Nav";
import Feed from "./Feed";

function App() {
	return (
		<Container>
			<Nav />
			<Switch>
				<Route path="/" exact>
					<Feed />
				</Route>
				<Route path="/" exact>
					<h1>Events Feed</h1>
				</Route>
				<Route path="/users">
					<Users />
				</Route>
			</Switch>
		</Container>
	);

}

export defult App;
