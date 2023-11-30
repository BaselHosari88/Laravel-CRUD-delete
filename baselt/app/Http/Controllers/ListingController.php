<?php

namespace App\Http\Controllers;

use App\Models\Listing;
use Illuminate\Http\Request;

class ListingController extends Controller
{
    public function index(){

        return view('listings',[
            'listings'=>Listing::all()
        ]);

    }

    public function show(Listing $listing){
        return view('listing',[
            'listing'=>$listing
        ]);

    }

    public function create(){
        return view('create');
    }

    public function store(Request $request){

        $form = $request->validate([
            'title'=>'required',
            'tags'=>'required',
            'company'=>'required',
            'location'=>'required',


        ]);

        Listing::create($form);
        return redirect('/listings')->with('message','Listing created');


    }


    public function edit(Listing $listing){
        return view('edit',['listing'=>$listing]);
    }

    public function update(Request $request, Listing $listing){

        $form = $request->validate([
            'title'=>'required',
            'tags'=>'required',
            'company'=>'required',
            'location'=>'required',


        ]);

        $listing->update($form);
        return redirect('/listings')->with('message2','Listing update');


    }
    
    public function delete(Listing $listing){
        $listing->delete();
        return redirect('/listings')->with('message3','h deleted');

    }




}

