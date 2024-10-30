import '../features/notes/domain/entity/categoria.dart';
import '../features/notes/domain/entity/note.dart';

final kNotas = [
  Nota(
    id: 1,
    conteudo:
        'Use Generics para maior segurança de tipos: Evite o uso de List sem especificar o tipo de elementos. Use List<String> para ter verificação de tipo em tempo de compilação, o que reduz erros de ClassCastException.',
    categoria: Categoria(id: 1, descricao: 'Java'),
  ),
  Nota(
    id: 2,
    conteudo:
        'Explore a biblioteca de streams: Em vez de laços tradicionais para processar listas, experimente usar Streams (disponíveis a partir do Java 8) para operações de filtro, mapeamento e redução, tornando o código mais conciso e funcional.',
    categoria: Categoria(id: 1, descricao: 'Java'),
  ),
  Nota(
    id: 3,
    conteudo:
        'Utilize o Optional para evitar NullPointerException: Em vez de retornar null em métodos que podem não ter valor, retorne um Optional, promovendo um design mais seguro e incentivando verificações de presença de valor.',
    categoria: Categoria(id: 1, descricao: 'Java'),
  ),
  Nota(
    id: 4,
    conteudo:
        'ompreenda e utilize list comprehensions: As list comprehensions tornam o código mais compacto e legível quando se deseja criar listas a partir de outras sequências. ',
    categoria: Categoria(id: 2, descricao: 'Python'),
  ),
  Nota(
    id: 5,
    conteudo:
        'Explore a biblioteca collections: O módulo collections fornece estruturas de dados mais especializadas, como defaultdict, Counter e namedtuple, que são poderosas para otimizar certas tarefas.',
    categoria: Categoria(id: 2, descricao: 'Python'),
  ),
  Nota(
    id: 6,
    conteudo:
        'Use variáveis de ambiente com dotenv para configuração segura: Quando você tem chaves de API ou configurações sensíveis, armazene-as em um arquivo .env e carregue-as com a biblioteca dotenv, evitando armazenar segredos diretamente no código.',
    categoria: Categoria(id: 2, descricao: 'Python'),
  ),
];
