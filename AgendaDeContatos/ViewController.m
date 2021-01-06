//
//  ViewController.m
//  AgendaDeContatos
//
//  Created by Breno Luizetto Cintra on 05/01/21.
//  Copyright © 2021 Alura. All rights reserved.
//

#import "ViewController.h"
#import "Contato.h"
#import "ListaContatosViewController.h"

@implementation ViewController

-(id)initWithCoder: (NSCoder *) aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self){
    
        self.dao = [ContatoDao contatoDaoInstance];
        
    }
    return self;
}

-(void) viewDidLoad{
    [super viewDidLoad];
    
    UIBarButtonItem *botao = nil;
    if (self.contato){
        botao = [[UIBarButtonItem alloc] initWithTitle:@"Alterar" style:UIBarButtonItemStylePlain target:self action:@selector(altera)];
        self.navigationItem.title = @"Editar Contato";
        
    }else{
        botao = [[UIBarButtonItem alloc] initWithTitle:@"Adicionar" style: UIBarButtonItemStylePlain target:self action:@selector(adiciona)];
        self.navigationItem.title = @"Novo Contato";
        
    }
    self.navigationItem.rightBarButtonItem = botao;

    
    self.nome.text = self.contato.nome;
    self.telefone.text = self.contato.telefone;
    self.endereco.text = self.contato.endereco;
    self.site.text = self.contato.site;
    self.email.text = self.contato.email;

}

-(void) adiciona {
    
    
    self.contato = [Contato new];
  
    [self pegaDadosFormulario];
    
    [self.dao adicionaContato:self.contato];
    
    [self.navigationController popViewControllerAnimated:true];
    
    [self.delegate contatoAdicionado: self.contato];
    
    
}

-(void) altera {
    
    [self pegaDadosFormulario];
    
    [self.delegate contatoAtualizado: self.contato];
    
    [self.navigationController popViewControllerAnimated:true];
}

-(void) pegaDadosFormulario {
    self.contato.nome = self.nome.text;
    self.contato.endereco = self.endereco.text;
    self.contato.telefone = self.telefone.text;
    self.contato.site = self.site.text;
    self.contato.email = self.email.text;
}


@end
