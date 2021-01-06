//
//  ListaContatosViewController.h
//  AgendaDeContatos
//
//  Created by Breno Luizetto Cintra on 05/01/21.
//  Copyright © 2021 Alura. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContatoDao.h"
#import "ViewController.h"



@interface ListaContatosViewController : UITableViewController<ViewControllerDelegate>

@property ContatoDao *dao;
@property Contato *contatoSelecionado;
@property NSInteger linhaSelecionada;


@end


