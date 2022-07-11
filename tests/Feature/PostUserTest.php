<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class PostUserTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function test_example()
    {
        $response = $this->withHeaders([
            'X-Header' => 'Value',
        ])->post('/api/create', ["name" => "rodny sibugan", "email" => "rodnysssssssssss@gmail.com", "ip_address" => "192.567.676"]);
 
        $response->assertStatus(201);
    }
}
