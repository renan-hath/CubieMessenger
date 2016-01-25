.class final enum Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;
.super Ljava/lang/Enum;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ManagedImageLoaders"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;

.field public static final enum INSTANCE:Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;


# instance fields
.field private final exists:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/liquable/nemo/util/ImageLoader;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;->INSTANCE:Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;

    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;

    sget-object v1, Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;->INSTANCE:Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;->$VALUES:[Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;->exists:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 104
    const-class v0, Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;->$VALUES:[Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;

    invoke-virtual {v0}, [Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 5
    .param p1, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 110
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;->exists:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 111
    .local v0, "exist":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/liquable/nemo/util/ImageLoader;>;"
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/util/ImageLoader;

    .line 112
    .local v1, "otherImageLoader":Lcom/liquable/nemo/util/ImageLoader;
    if-nez v1, :cond_0

    .line 113
    iget-object v3, p0, Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;->exists:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v1}, Lcom/liquable/nemo/util/ImageLoader;->reduceMemoryUsage()V

    goto :goto_0

    .line 119
    .end local v0    # "exist":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/liquable/nemo/util/ImageLoader;>;"
    .end local v1    # "otherImageLoader":Lcom/liquable/nemo/util/ImageLoader;
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;->exists:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method public remove(Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 4
    .param p1, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 123
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;->exists:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 124
    .local v1, "exist":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/liquable/nemo/util/ImageLoader;>;"
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/ImageLoader;

    .line 125
    .local v0, "eachImageLoader":Lcom/liquable/nemo/util/ImageLoader;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;->exists:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 129
    .end local v0    # "eachImageLoader":Lcom/liquable/nemo/util/ImageLoader;
    .end local v1    # "exist":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/liquable/nemo/util/ImageLoader;>;"
    :cond_2
    return-void
.end method
