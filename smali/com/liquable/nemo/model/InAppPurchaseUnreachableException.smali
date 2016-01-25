.class public Lcom/liquable/nemo/model/InAppPurchaseUnreachableException;
.super Lcom/liquable/nemo/model/DomainException;
.source "InAppPurchaseUnreachableException.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x38b70ce5cfad5a4aL


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/liquable/nemo/model/DomainException;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 16
    instance-of v0, p0, Lcom/liquable/nemo/model/InAppPurchaseUnreachableException;

    return v0
.end method

.method public getI18nKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "purchase_in_app_purchase_unreachable"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 26
    const v0, -0x12d4cb

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "InAppPurchaseUnreachableException []"

    return-object v0
.end method
