//
//  ViewController.h
//  AgendaDeContatos
//
//  Created by Breno Luizetto Cintra on 05/01/21.
//  Copyright © 2021 Alura. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContatoDao.h"

@protocol ViewControllerDelegate <NSObject>


-(void) contatoAdicionado: (Contato *) contato;
-(void) contatoAtualizado: (Contato *) contato;

@end

@interface ViewController : UIViewController

@property IBOutlet UITextField *nome;
@property IBOutlet UITextField *endereco;
@property IBOutlet UITextField *telefone;
@property IBOutlet UITextField *site;
@property IBOutlet UITextField *email;

@property ContatoDao *dao;
@property Contato *contato;

@property id<ViewControllerDelegate> delegate;


@end

