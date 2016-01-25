.class public interface abstract Lcom/liquable/nemo/model/IDomainExceptionMapper;
.super Ljava/lang/Object;
.source "IDomainExceptionMapper.java"


# virtual methods
.method public abstract decode(Ljava/lang/String;)Lcom/liquable/nemo/model/DomainException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/model/ExceptionMappingException;
        }
    .end annotation
.end method

.method public abstract encode(Lcom/liquable/nemo/model/DomainException;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/model/ExceptionMappingException;
        }
    .end annotation
.end method
