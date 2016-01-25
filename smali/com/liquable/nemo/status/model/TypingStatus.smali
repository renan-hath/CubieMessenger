.class public Lcom/liquable/nemo/status/model/TypingStatus;
.super Ljava/lang/Object;
.source "TypingStatus.java"

# interfaces
.implements Lcom/liquable/nemo/status/model/IChatStatus;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field public static final DISPLAY_DURATION_IN_MS:I = 0x2710

.field public static final SEND_INTERVAL_IN_MS:I = 0x1f40

.field private static final serialVersionUID:J = 0x4b5fbe44939a621cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
