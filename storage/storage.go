package storage

import (
	"app/models"
	"context"
)

type StorageI interface {
	CloseDB()
	Category() CategoryRepoI
}

type CategoryRepoI interface {
	Insert(context.Context, *models.CreateCategory) (string, error)
	GetByID(context.Context, *models.CategoryPrimeryKey) (*models.Category1, error)
	GetList(context.Context, *models.GetListCategoryRequest) (*models.GetListCategoryResponse, error)
	Update(context.Context, *models.UpdateCategory) error
	Delete(context.Context, *models.CategoryPrimeryKey) error
}
