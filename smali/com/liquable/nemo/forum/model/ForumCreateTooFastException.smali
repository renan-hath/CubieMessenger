.class public Lcom/liquable/nemo/forum/model/ForumCreateTooFastException;
.super Lcom/liquable/nemo/model/DomainException;
.source "ForumCreateTooFastException.java"


# static fields
.field private static final serialVersionUID:J = 0x4e7fc57e13a28a50L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/liquable/nemo/model/DomainException;-><init>()V

    return-void
.end method


# virtual methods
.method public getI18nKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    const-string/jumbo v0, "create_forum_too_fast"

    return-object v0
.end method
