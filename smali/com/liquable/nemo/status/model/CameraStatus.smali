.class public Lcom/liquable/nemo/status/model/CameraStatus;
.super Ljava/lang/Object;
.source "CameraStatus.java"

# interfaces
.implements Lcom/liquable/nemo/status/model/IChatStatus;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field public static final DISPLAY_DURATION_IN_MS:I = 0x2710

.field private static final serialVersionUID:J = 0xc495f394ce4c9b6L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
