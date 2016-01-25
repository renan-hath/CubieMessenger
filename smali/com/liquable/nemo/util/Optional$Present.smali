.class final Lcom/liquable/nemo/util/Optional$Present;
.super Lcom/liquable/nemo/util/Optional;
.source "Optional.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Present"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/liquable/nemo/util/Optional",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final reference:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/liquable/nemo/util/Optional$Present;, "Lcom/liquable/nemo/util/Optional$Present<TT;>;"
    .local p1, "reference":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/util/Optional;-><init>(Lcom/liquable/nemo/util/Optional$1;)V

    .line 71
    iput-object p1, p0, Lcom/liquable/nemo/util/Optional$Present;->reference:Ljava/lang/Object;

    .line 72
    return-void
.end method


# virtual methods
.method public asSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/liquable/nemo/util/Optional$Present;, "Lcom/liquable/nemo/util/Optional$Present<TT;>;"
    iget-object v0, p0, Lcom/liquable/nemo/util/Optional$Present;->reference:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 81
    .local p0, "this":Lcom/liquable/nemo/util/Optional$Present;, "Lcom/liquable/nemo/util/Optional$Present<TT;>;"
    instance-of v1, p1, Lcom/liquable/nemo/util/Optional$Present;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 82
    check-cast v0, Lcom/liquable/nemo/util/Optional$Present;

    .line 83
    .local v0, "other":Lcom/liquable/nemo/util/Optional$Present;, "Lcom/liquable/nemo/util/Optional$Present<*>;"
    iget-object v1, p0, Lcom/liquable/nemo/util/Optional$Present;->reference:Ljava/lang/Object;

    iget-object v2, v0, Lcom/liquable/nemo/util/Optional$Present;->reference:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 85
    .end local v0    # "other":Lcom/liquable/nemo/util/Optional$Present;, "Lcom/liquable/nemo/util/Optional$Present<*>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/liquable/nemo/util/Optional$Present;, "Lcom/liquable/nemo/util/Optional$Present<TT;>;"
    iget-object v0, p0, Lcom/liquable/nemo/util/Optional$Present;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 95
    .local p0, "this":Lcom/liquable/nemo/util/Optional$Present;, "Lcom/liquable/nemo/util/Optional$Present<TT;>;"
    const v0, 0x598df91c

    iget-object v1, p0, Lcom/liquable/nemo/util/Optional$Present;->reference:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isPresent()Z
    .locals 1

    .prologue
    .line 100
    .local p0, "this":Lcom/liquable/nemo/util/Optional$Present;, "Lcom/liquable/nemo/util/Optional$Present<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public or(Lcom/liquable/nemo/util/Optional;)Lcom/liquable/nemo/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/util/Optional",
            "<+TT;>;)",
            "Lcom/liquable/nemo/util/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/liquable/nemo/util/Optional$Present;, "Lcom/liquable/nemo/util/Optional$Present<TT;>;"
    .local p1, "secondChoice":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<+TT;>;"
    invoke-static {p1}, Lcom/liquable/nemo/util/Optional$Present;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-object p0
.end method

.method public or(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/liquable/nemo/util/Optional$Present;, "Lcom/liquable/nemo/util/Optional$Present<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    const-string/jumbo v0, "use orNull() instead of or(null)"

    invoke-static {p1, v0}, Lcom/liquable/nemo/util/Optional$Present;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/liquable/nemo/util/Optional$Present;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public orNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lcom/liquable/nemo/util/Optional$Present;, "Lcom/liquable/nemo/util/Optional$Present<TT;>;"
    iget-object v0, p0, Lcom/liquable/nemo/util/Optional$Present;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    .local p0, "this":Lcom/liquable/nemo/util/Optional$Present;, "Lcom/liquable/nemo/util/Optional$Present<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Optional.of("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/util/Optional$Present;->reference:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
