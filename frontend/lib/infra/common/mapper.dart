abstract class Mapper<Domain, Data> {
  Data fromDomain(Domain domain);
  Domain toDomain(Data data);
}
