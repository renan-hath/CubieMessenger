.class public abstract Lcom/liquable/nemo/model/DomainException;
.super Ljava/lang/Exception;
.source "DomainException.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# static fields
.field private static final serialVersionUID:J = 0x1042f72d5b89cc48L


# instance fields
.field private final i18nValues:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/model/DomainException;-><init>([Ljava/lang/Object;)V

    .line 13
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .param p1, "i18nValues"    # [Ljava/lang/Object;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/liquable/nemo/model/DomainException;->i18nValues:[Ljava/lang/Object;

    .line 17
    return-void
.end method


# virtual methods
.method public abstract getI18nKey()Ljava/lang/String;
.end method

.method public getI18nValues()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/model/DomainException;->i18nValues:[Ljava/lang/Object;

    return-object v0
.end method
