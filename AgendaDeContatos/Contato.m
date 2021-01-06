//
//  Contato.m
//  AgendaDeContatos
//
//  Created by Breno Luizetto Cintra on 05/01/21.
//  Copyright © 2021 Alura. All rights reserved.
//

#import "Contato.h"

@implementation Contato

- (NSString *)description {
    NSString *dados = [NSString stringWithFormat:@"Nome: %@ Endereço: %@ Email: %@ Site: %@ Telefone %@", self.nome, self.endereco, self.email, self.site, self.telefone];
    return dados;
}




@end
