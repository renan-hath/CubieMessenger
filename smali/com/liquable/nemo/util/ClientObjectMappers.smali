.class public Lcom/liquable/nemo/util/ClientObjectMappers;
.super Ljava/lang/Object;
.source "ClientObjectMappers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/util/ClientObjectMappers$Holder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getAnnotationOnly()Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .prologue
    .line 104
    # getter for: Lcom/liquable/nemo/util/ClientObjectMappers$Holder;->ANNOTATION_ONLY:Lorg/codehaus/jackson/map/ObjectMapper;
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers$Holder;->access$100()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    return-object v0
.end method

.method public static getSimple()Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .prologue
    .line 85
    # getter for: Lcom/liquable/nemo/util/ClientObjectMappers$Holder;->SIMPLE:Lorg/codehaus/jackson/map/ObjectMapper;
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers$Holder;->access$000()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    return-object v0
.end method
