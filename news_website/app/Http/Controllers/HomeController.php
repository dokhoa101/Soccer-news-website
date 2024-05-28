<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\League;
use App\Models\Club;
use App\Models\News;
use App\Models\Player;
use App\Models\Comment;
use App\Models\User;
use Illuminate\Support\Facades\Auth;



class HomeController extends Controller
{
    public function index()
    {
        $users = User::orderBy('created_at', 'desc')->paginate(10);
        return view('admin.index', compact('users'));
    }

    public function home()
    {
        $category_list = Category::all();
        $league_list = League::all();
        $club_list = Club::all();
        $player_list = Player::all();
        $news_list = News::all();
        return view('home.index', compact('category_list', 'league_list', 'club_list', 'player_list', 'news_list'));
    }

    public function login_home()
    {
        $category_list = Category::all();
        $league_list = League::all();
        $club_list = Club::all();
        $player_list = Player::all();
        $news_list = News::all();
        return view('home.index', compact('category_list', 'league_list', 'club_list', 'player_list', 'news_list'));
    }

    public function top_news($category_name, $id)
    {
        $category_list = Category::all();
        $league_list = League::all();
        $club_list = Club::all();
        $player_list = Player::all();
        $news_list = News::all();
        $league_data = League::where('category_id', $id)->get();
        $news_data = News::whereIn('league_id', $league_data->pluck('id'))->paginate(10);
        return view('home.top_news', compact('category_list', 'league_list', 'club_list', 'player_list', 'news_list', 'league_data', 'news_data'));
    }

    public function top_news_specific($category_name, $categoryid, $leagueid)
    {
        $category_list = Category::all();
        $league_list = League::all();
        $club_list = Club::all();
        $player_list = Player::all();
        $news_data = News::where('league_id', $leagueid)->paginate(10);
        return view('home.top_news', compact('category_list', 'league_list', 'club_list', 'player_list', 'news_data'));
    }

    public function details($id)
    {
        $category_list = Category::all();
        $league_list = League::all();
        $club_list = Club::all();
        $player_list = Player::all();
        $news_list = News::all();
        $news_data = News::where('id', $id)->get();
        $user = Auth::user();
        return view('home.details', compact('category_list', 'league_list', 'club_list', 'news_list', 'player_list', 'news_data','user'));
    }

    public function comment(Request $request,$news_id,$user_id){


        $comment = new Comment();
        $comment->user_id = $user_id;
        $comment->news_id = $news_id;
        $comment->comment = $request->comment;
        $comment->save();
        toastr()->timeOut(10000)->closeButton()->addSuccess("Comment successfully!");

        return redirect()->back();

    }

    public function search(Request $request)
    {
        $search = $request->search;    
        $category_list = Category::all();
        $league_list = League::all();
        $club_list = Club::all();
        $player_list = Player::all();
        $news_data = News::where('title','LIKE','%'.$search.'%')->paginate(5);

        return view('home.top_news', compact('category_list', 'league_list', 'club_list', 'player_list', 'news_data'));
    }
}
