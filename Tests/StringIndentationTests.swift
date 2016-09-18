/*
 
 StringIndentationTests.swift
 Tests
 
 CotEditor
 http://coteditor.com
 
 Created by 1024jp on 2015-11-24.
 
 ------------------------------------------------------------------------------
 
 © 2015 1024jp
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 
 */

import XCTest

class StringIndentationTests: XCTestCase {
    
    // MARK: Indentation Style Detection Tests
    
    func testIndentStyleDetection() {
        let string = "\t\tfoo\tbar"
        
        XCTAssertEqual(string.detectIndentStyle(), CEIndentStyle.notFound)
    }
    
    
    // MARK: Indentation Style Standardization Tests
    
    func testIndentStyleStandardizationToTab() {
        let string = "     foo    bar\n  "
        
        // NotFound
        XCTAssertEqual(string.standardizingIndentStyle(to: .notFound, tabWidth: 2), string)
        
        // spaces to tab
        XCTAssertEqual(string.standardizingIndentStyle(to: .tab, tabWidth: 2), "\t\t foo    bar\n\t")
        XCTAssertEqual(string.standardizingIndentStyle(to: .space, tabWidth: 2), string)
    }
    
    
    func testIndentStyleStandardizationToSpace() {
        let string = "\t\tfoo\tbar"
        
        XCTAssertEqual(string.standardizingIndentStyle(to: .space, tabWidth: 2), "    foo\tbar")
        XCTAssertEqual(string.standardizingIndentStyle(to: .tab, tabWidth: 2), string)
    }

}
