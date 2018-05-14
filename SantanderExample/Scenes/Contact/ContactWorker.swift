//
//  ContactWorker.swift
//  SantanderExample
//
//  Created by Luan Henrique Damasceno Costa on 13/05/2018.
//  Copyright (c) 2018 Luan Henrique Damasceno Costa. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import Moya

class ContactWorker {
  
  // To mock the server use stubClosure: MoyaProvider.immediatelyStub -> This use the mock jsons setted on the project, using the Sample Data from Moya Target Type
  
  private var provider: MoyaProvider<ContactTargetType> = MoyaProvider<ContactTargetType>(/*stubClosure: MoyaProvider.immediatelyStub*/)
  
  func getContactForms(onSuccess: @escaping (ContactFormResponse) -> Void, onFailure: @escaping (ServiceError) -> Void) {
    
    let target = ContactTargetType.getContactForms()
    
    provider.requestCodableObject(
      target,
      onSuccess: { (screen: ContactFormResponse) in
        onSuccess(screen)
    }, onFailure: { (error) in
      onFailure(error)
    })
  }
  
}