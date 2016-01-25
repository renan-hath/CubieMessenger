.class public Lcom/liquable/nemo/forum/model/article/UnknownArticle;
.super Ljava/lang/Object;
.source "UnknownArticle.java"

# interfaces
.implements Lcom/liquable/nemo/forum/model/article/IArticleBody;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2b4f24bcba3d5153L


# instance fields
.field private raw:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "raw"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "raw"
        .end annotation
    .end param

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/liquable/nemo/forum/model/article/UnknownArticle;->raw:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getRaw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/UnknownArticle;->raw:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public setRaw(Ljava/lang/String;)V
    .locals 0
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/liquable/nemo/forum/model/article/UnknownArticle;->raw:Ljava/lang/String;

    .line 23
    return-void
.end method
