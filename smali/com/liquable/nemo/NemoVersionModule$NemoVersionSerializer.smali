.class final Lcom/liquable/nemo/NemoVersionModule$NemoVersionSerializer;
.super Lorg/codehaus/jackson/map/JsonSerializer;
.source "NemoVersionModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/NemoVersionModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NemoVersionSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/JsonSerializer",
        "<",
        "Lcom/liquable/nemo/NemoVersion;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/codehaus/jackson/map/JsonSerializer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/NemoVersionModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/NemoVersionModule$1;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/liquable/nemo/NemoVersionModule$NemoVersionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lcom/liquable/nemo/NemoVersion;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .param p1, "value"    # Lcom/liquable/nemo/NemoVersion;
    .param p2, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/liquable/nemo/NemoVersion;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 25
    check-cast p1, Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {p0, p1, p2, p3}, Lcom/liquable/nemo/NemoVersionModule$NemoVersionSerializer;->serialize(Lcom/liquable/nemo/NemoVersion;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method
