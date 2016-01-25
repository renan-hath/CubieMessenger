.class public abstract Lcom/liquable/nemo/message/model/AskMessage;
.super Lcom/liquable/nemo/message/model/DomainMessage;
.source "AskMessage.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x30ebb548d27b3bfL


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/liquable/nemo/message/model/DomainMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public isCopyable()Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public requirePush()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method
