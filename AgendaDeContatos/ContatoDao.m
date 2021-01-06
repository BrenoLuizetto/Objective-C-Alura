//
//  ContatoDao.m
//  AgendaDeContatos
//
//  Created by Breno Luizetto Cintra on 06/01/21.
//  Copyright © 2021 Alura. All rights reserved.
//

#import "ContatoDao.h"

@implementation ContatoDao

static ContatoDao *defaultDao = nil;

-(id) init{

    self = [super init];
    if(self){
        self.contatos = [NSMutableArray new];
    }
    return self;
    
}

+(ContatoDao *) contatoDaoInstance {
    
    if(!defaultDao){
        defaultDao = [ContatoDao new];
    }
    
    return defaultDao;
}

-(void) adicionaContato:(Contato *)contato{
    [self.contatos addObject:contato];
}

-(void) removeContato: (Contato *)contato{
    [self.contatos removeObject:contato];
}

-(NSInteger) total{
    return self.contatos.count;
}

-(Contato *) contatoDoIndice: (NSInteger) indice{
    return self.contatos[indice];
}

-(NSInteger) indiceDoContato: (Contato *)contato{
    return [self.contatos indexOfObject:contato];
}

@end
