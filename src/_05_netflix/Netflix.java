package _05_netflix;

public class Netflix {

	public static void main(String[] args) {
		Movie cars = new Movie("Cars", 4);
		Movie cars2 = new Movie("Cars 2", 4);
		Movie cars3 = new Movie("Cars 3", 3);
		Movie fastAndFurios = new Movie("Fast And Furios", 4);
		Movie fantasticBeastsAndWhereToFindThem = new Movie("Fantastic Beasts And Where To Find Them", 5);
		System.out.println(cars.getTicketPrice());
		NetflixQueue que = new NetflixQueue();
		que.addMovie(cars);
		que.addMovie(cars2);
		que.addMovie(cars3);
		que.addMovie(fastAndFurios);
		que.addMovie(fantasticBeastsAndWhereToFindThem);
		que.printMovies();
		System.out.println("the best move is '" + que.getBestMovie().getTitle()+"'");
		System.out.println("the second best move is '" + que.getMovie(1).getTitle()+"'");

	}

}
