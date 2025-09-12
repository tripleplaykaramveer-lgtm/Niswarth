<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class isAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        // dd(auth()->user());
        if (!auth()->check()) {
            return redirect()->route('login')->with('error', "Please login first");
        }

        if (auth()->user()->role == 1) {
            
            return $next($request);
        } else {
            return redirect()->route('register')->with('error', "You dont have access to that section");
        }
      
    }






}
