.class public Lcom/liquable/nemo/status/model/LoveMessageStatus;
.super Ljava/lang/Object;
.source "LoveMessageStatus.java"

# interfaces
.implements Lcom/liquable/nemo/status/model/IChatStatus;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field public static final DISPLAY_DURATION_IN_MS:I = 0x1f40

.field private static final serialVersionUID:J = -0x40532e98251f55e9L


# instance fields
.field private final messageId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "messageId"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/liquable/nemo/status/model/LoveMessageStatus;->messageId:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getMessageId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/liquable/nemo/status/model/LoveMessageStatus;->messageId:Ljava/lang/String;

    return-object v0
.end method
