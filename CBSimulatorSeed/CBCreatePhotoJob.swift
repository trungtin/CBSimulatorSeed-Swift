//
//  CBCreatePhotoJob.swift
//  CBSimulatorSeed
//
//  Created by Cristian Bica on 10/06/14.
//  Copyright (c) 2014 Cristian Bica. All rights reserved.
//

import EDQueue
import UIKit
import AssetsLibrary

class CBCreatePhotoJob: CBAsyncJob {

  override func performWithCompletion(_ block: ((_ result: EDQueueResult) -> Void)) {
    let library : ALAssetsLibrary = ALAssetsLibrary()
    let imageData : Data = try! Data(contentsOf: URL(string: "http://lorempixel.com/640/960")!)
    library.writeImageDataToSavedPhotosAlbum(imageData, metadata: nil, completionBlock:{
      (assetURL: URL!, error: NSError!) -> Void in
      block(result: EDQueueResult.Success);
    })
  }

}
