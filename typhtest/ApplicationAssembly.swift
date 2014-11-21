//
//  ApplicationAssembly.swift
//  typhtest
//
//  Created by Paweł Urban on 20.11.2014.
//  Copyright (c) 2014 Impel IT Sp. z o.o. All rights reserved.
//

public class ApplicationAssembly: TyphoonAssembly {
    public dynamic func appDelegate() -> AnyObject {
        return TyphoonDefinition.withClass(AppDelegate.self) {
            (definition) in
            definition.injectProperty(Selector("myAssembly"), with: self)
        }
    }
}