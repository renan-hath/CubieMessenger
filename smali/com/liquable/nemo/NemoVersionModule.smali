.class public Lcom/liquable/nemo/NemoVersionModule;
.super Lorg/codehaus/jackson/map/module/SimpleModule;
.source "NemoVersionModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/NemoVersionModule$NemoVersionSerializer;,
        Lcom/liquable/nemo/NemoVersionModule$NemoVersionDeserializer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 35
    const-string/jumbo v0, "NemoVersionModule"

    new-instance v1, Lorg/codehaus/jackson/Version;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v4, v4, v3}, Lorg/codehaus/jackson/Version;-><init>(IIILjava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/module/SimpleModule;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/Version;)V

    .line 37
    const-class v0, Lcom/liquable/nemo/NemoVersion;

    new-instance v1, Lcom/liquable/nemo/NemoVersionModule$NemoVersionSerializer;

    invoke-direct {v1, v3}, Lcom/liquable/nemo/NemoVersionModule$NemoVersionSerializer;-><init>(Lcom/liquable/nemo/NemoVersionModule$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/NemoVersionModule;->addSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/module/SimpleModule;

    .line 38
    const-class v0, Lcom/liquable/nemo/NemoVersion;

    new-instance v1, Lcom/liquable/nemo/NemoVersionModule$NemoVersionDeserializer;

    invoke-direct {v1, v3}, Lcom/liquable/nemo/NemoVersionModule$NemoVersionDeserializer;-><init>(Lcom/liquable/nemo/NemoVersionModule$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/NemoVersionModule;->addDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/module/SimpleModule;

    .line 39
    return-void
.end method
