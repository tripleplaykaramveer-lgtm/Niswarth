<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class Vendor
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {

         // dd(auth()->user());
         if (auth()->user()->role == 2) {
            //dd(auth()->user());
            return $next($request);
        } else {
            return redirect()->back()->with('error', "You dont have access to that section");
        }
      
        // return $next($request);
    }
}
