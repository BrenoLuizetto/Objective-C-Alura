//
//  ContatoDao.h
//  AgendaDeContatos
//
//  Created by Breno Luizetto Cintra on 06/01/21.
//  Copyright © 2021 Alura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contato.h"


@interface ContatoDao : NSObject

@property NSMutableArray *contatos;


-(void) adicionaContato: (Contato *) contato;
-(NSInteger) total;
-(Contato *) contatoDoIndice: (NSInteger) indice;
+ (ContatoDao *) contatoDaoInstance;
-(void) removeContato: (Contato *) contato;
-(NSInteger) indiceDoContato: (Contato *) contato;


@end


