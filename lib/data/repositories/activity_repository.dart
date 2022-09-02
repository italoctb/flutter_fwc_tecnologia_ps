import 'package:ps_fwc_tecnologia/domain/entities/activity_entity.dart';
import 'package:ps_fwc_tecnologia/domain/usecases/activity_usecase.dart';

import '../clients/activity_client.dart';

class ActivityRepository implements ActivityUseCase {
  final ActivityClient client;

  ActivityRepository(this.client);
  @override
  Future<List<ActivityEntity>> getAll() async {
    List<ActivityEntity> resp = [];
    final dtoList = await client.getAllFromDatasource();
    for (var element in dtoList) {
      resp.add(ActivityEntity(
          sId: element.sId!,
          comentariosQtd: element.comentariosQtd!,
          porcetagemMediaAcertos: element.porcetagemMediaAcertos!,
          mediaDuracao: element.mediaDuracao!,
          avaliacaoNota: element.avaliacaoNota!,
          desafioId: element.desafioId!,
          titulo: element.titulo!,
          descricao: element.descricao!,
          usuarioAutor: element.usuarioAutor!,
          usuarioAutorNome: element.usuarioAutorNome!,
          usuarioAutorApelido: element.usuarioAutorApelido!,
          imagemCapa: element.imagemCapa!,
          dataCriacao: element.dataCriacao!,
          usuarioAutorImagemPerfil: element.usuarioAutorImagemPerfil,
          usuarioAutorBorda: element.usuarioAutorBorda,
          usuarioAutorIcone: element.usuarioAutorIcone));
    }
    return resp;
  }
}
