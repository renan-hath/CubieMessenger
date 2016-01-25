.class public final Lcom/liquable/nemo/endpoint/frame/UnknownTypeFrame;
.super Ljava/lang/Object;
.source "UnknownTypeFrame.java"

# interfaces
.implements Lcom/liquable/nemo/endpoint/frame/IEpFrame;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x56cd3d55ebd3104dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 11
    instance-of v0, p1, Lcom/liquable/nemo/endpoint/frame/UnknownTypeFrame;

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 16
    const v0, -0x98b40

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "UnknownTypeFrame []"

    return-object v0
.end method
