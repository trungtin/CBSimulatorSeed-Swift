//
//  CBAsyncJob.swift
//  CBSimulatorSeed
//
//  Created by Cristian Bica on 10/06/14.
//  Copyright (c) 2014 Cristian Bica. All rights reserved.
//

import Foundation
import EDQueue

class CBAsyncJob {
  
  var data : Dictionary<String, Int> = [:]
  
  func initWithData(_ jobData: Dictionary<String, Int>) -> CBAsyncJob {
    data = jobData
    return self
  }
  
  func performWithCompletion(_ block: ((_ result: EDQueueResult) -> Void)) {
    block(result: EDQueueResult.Success);
  }
  
}
