//
//  TapHoldCounterSpec.swift
//  P01TapCounter
//
//  Created by vic on 9/01/2016.
//  Copyright © 2016 augusteo. All rights reserved.
//

import Quick
import Nimble
@testable import P02TapHoldCounter

class TapHoldCounterSpec: QuickSpec {
    override func spec() {
        var subject: TapHoldCounterViewController!
        
        beforeEach {
            subject = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("TapHoldCounterVC") as! TapHoldCounterViewController
            expect(subject.view).toNot(beNil())
        }
        
        context("when first initialized") {
            it("display counter at 0") {
                expect(subject.counter!).to(equal(0))
                expect(subject.counterLabel.text!).to(equal("0"))
            }
        }
        
        context("responding to user actions") {
            
            beforeEach {
                subject.tapButton.sendActionsForControlEvents(.TouchUpInside)
            }
            
            it("increases counter by 1") {
                expect(subject.counter!).to(equal(1))
                expect(subject.counterLabel.text!).to(equal("1"))
            }

            context("when tapped two more time") {
                
                beforeEach {
                    subject.tapButton.sendActionsForControlEvents(.TouchUpInside)
                    subject.tapButton.sendActionsForControlEvents(.TouchUpInside)
                }
                
                it("increase counter by 2") {
                    expect(subject.counter!).to(equal(3))
                    expect(subject.counterLabel.text!).to(equal("3"))
                }
            }

            context("when reset is tapped") {
                
                beforeEach {
                    UIApplication.sharedApplication().sendAction(subject.resetBarButton.action, to: subject.resetBarButton.target, from: subject, forEvent: nil)
                }
                
                it("reset counter to 0") {
                    expect(subject.counter!).to(equal(0))                    
                    expect(subject.counterLabel.text!).to(equal("0"))
                }
            }
            
            context("when tap dragging") {
                beforeEach {
                    subject.tapButton.sendActionsForControlEvents(.TouchDragInside)
                }
                
                it("increases the counter by 1") {
                    expect(subject.counter!).to(equal(1))
                }
            }
        }
    }
}
























