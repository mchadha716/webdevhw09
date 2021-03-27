#!/bin/bash

export MIX_ENV=prod
export PORT=4798
export SECRET_KEY_BASE=W68eso5YQOlbtvSNUR50N/HDWj6IaEhAwMR3LtzuBEQAefwYVbX84bvoTA7XtiGi
export DATABASE_URL=ecto://"events":aiNg8tuSee3k@localhost/events_prod

_build/prod/rel/events/bin/events start
