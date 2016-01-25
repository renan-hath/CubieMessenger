.class public Lcom/liquable/nemo/model/InvalidOpenApiAppSignatureException;
.super Lcom/liquable/nemo/model/DomainException;
.source "InvalidOpenApiAppSignatureException.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x44fca796af27e09bL


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/liquable/nemo/model/DomainException;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 15
    instance-of v0, p0, Lcom/liquable/nemo/model/InvalidOpenApiAppSignatureException;

    return v0
.end method

.method public getI18nKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "error_open_api"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 25
    const v0, -0x12d4cb

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "InvalidOpenApiAppSignatureException []"

    return-object v0
.end method
