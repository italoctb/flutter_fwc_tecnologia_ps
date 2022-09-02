import '../models/usuario_autor_borda.dart';
import '../models/usuario_autor_icone.dart';

class ActivityEntity {
  String sId;
  int comentariosQtd;
  double porcetagemMediaAcertos;
  double mediaDuracao;
  double avaliacaoNota;
  String desafioId;
  String titulo;
  String descricao;
  String usuarioAutor;
  String usuarioAutorNome;
  String usuarioAutorApelido;
  String imagemCapa;
  String dataCriacao;
  String? usuarioAutorImagemPerfil;
  UsuarioAutorBorda? usuarioAutorBorda;
  UsuarioAutorIcone? usuarioAutorIcone;

  ActivityEntity(
      {required this.sId,
      required this.comentariosQtd,
      required this.porcetagemMediaAcertos,
      required this.mediaDuracao,
      required this.avaliacaoNota,
      required this.desafioId,
      required this.titulo,
      required this.descricao,
      required this.usuarioAutor,
      required this.usuarioAutorNome,
      required this.usuarioAutorApelido,
      required this.imagemCapa,
      required this.dataCriacao,
      required this.usuarioAutorImagemPerfil,
      this.usuarioAutorBorda,
      this.usuarioAutorIcone});
}
