<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Valorant Protocol - Agents Gallery</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/styles.css">
</head>
<body class="bg-dark text-white">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
        <div class="container">
            <a class="navbar-brand fw-bold text-danger" href="/">VALORANT PROTOCOL</a>
            <div class="collapse navbar-collapse">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link active" href="/">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="/about">About</a></li>
                    <li class="nav-item"><a class="nav-link" href="/characters/new">Add a Character</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container my-5">
        <h1 class="text-center mb-2 fw-bold" style="color: #ff4655;">VALORANT AGENTS</h1>
        <p class="text-center text-light mb-4">Explore the roster of elite agents with unique tactical abilities.</p>
        
        <!-- Search Bar -->
        <div class="row justify-content-center mb-5">
            <div class="col-md-8">
                <form action="/" method="get" class="d-flex gap-2 flex-wrap">
                    <input class="form-control" type="search" name="name" placeholder="Search Agent by name..." value="${search!''}">
                    <select class="form-select" name="role" style="max-width: 220px;">
                        <option value="">All roles</option>
                        <option value="Duelist" <#if (role!'') == 'Duelist'>selected</#if>>Duelist</option>
                        <option value="Initiator" <#if (role!'') == 'Initiator'>selected</#if>>Initiator</option>
                        <option value="Controller" <#if (role!'') == 'Controller'>selected</#if>>Controller</option>
                        <option value="Sentinel" <#if (role!'') == 'Sentinel'>selected</#if>>Sentinel</option>
                    </select>
                    <button class="btn btn-primary" type="submit">Search</button>
                </form>
            </div>
        </div>

        <!-- Gallery -->
        <div class="row g-4">
            <#if characters?? && (characters?size > 0)>
                <#list characters as character>
                    <div class="col-md-4">
                        <div class="card character-card h-100 shadow bg-secondary text-white border-0">
                            <img src="${character.imageUrl!'/images/jett.jfif'}" class="card-img-top" alt="${character.name!''}" style="height: 280px; object-fit: cover;">
                            <div class="card-body d-flex flex-column">
                                <h4 class="card-title fw-bold text-white">${character.name!''}</h4>
                                <p class="card-text"><span class="badge bg-danger">${character.role!''}</span></p>
                                <p class="card-text text-light"><strong>Origin:</strong> ${character.origin!''}</p>
                                <p class="card-text text-light flex-grow-1">${character.description!''}</p>
                                <a href="/characters/${character.characterId}" class="btn btn-primary w-100 mt-2">View Details</a>
                            </div>
                        </div>
                    </div>
                </#list>
            <#else>
                <div class="col-12 text-center my-5">
                    <h4 class="text-muted">No agents found in database.</h4>
                </div>
            </#if>
        </div>
    </div>
</body>
</html>