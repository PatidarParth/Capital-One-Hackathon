/*
 * Copyright (c) 2015 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import Foundation

struct User {
  
  let city: String
  let firstname: String
  let lastname: String
  let leader: String
  let school: String
  let state: String
  let userid: Int
  let work_location: String
    
    
  init(authData: User) {
    city = authData.city
    firstname = authData.firstname
    lastname = authData.lastname
    leader = authData.leader
    school = authData.school
    state = authData.state
    userid = authData.userid
    work_location = authData.work_location
  }
  
    init(city: String, firstname: String, lastname: String, leader: String, school: String, state: String, userid: Int, work_location: String) {
    self.city = city
    self.firstname = firstname
    self.lastname = lastname
    self.leader = leader
    self.school = school
    self.state = state
    self.userid = userid
    self.work_location = work_location  }
  
}
