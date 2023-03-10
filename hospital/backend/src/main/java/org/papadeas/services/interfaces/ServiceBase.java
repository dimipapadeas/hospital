package org.papadeas.services.interfaces;

import java.util.List;
import org.papadeas.dto.BaseDto;
import org.papadeas.model.EntityBase;


/**
 * An interface describing the basic functionality of app services
 *
 * @param <E> an app entity
 * @param <D> an app DTO
 */
public interface ServiceBase<E extends EntityBase, D extends BaseDto> {

    /**
     * Maps a DTO to a new entity persists it to the DB and returns the generated ID
     *
     * @param dto the DTO to be mapped to the created entity
     * @return the ID of the persisted entity
     */
    D create(D dto);

    /**
     * Updates an entity using id and version for matching
     *
     * @param dto the DTO containing all the information regarding the entity to be updated
     * @return a DTO with the updated entity and new version
     */
    D update(D dto);


    /**
     * Searches an entity in the DB and returns a DTO with the entity's properties
     *
     * @param id the ID of the entity to be searched
     * @return a DTO of the entity type
     * @throws Exception when the entity is not present in the DB
     */
    D findById(String id);


    /**
     * Retrieves all the dtos of the database
     *
     * @return DTO list of the entity type
     */
    List<D> findAll();

    /**
     * Searches an entity in the DB and returns it
     *
     * @param id the ID of the entity to be searched
     * @return the found entity or {@literal null} if the id given is {@literal null}
     */
    E findResource(String id);


    /**
     * Searches and deletes a record from the DB based on the given ID
     *
     * @param id the ID of the resource to be deleted
     */
    void delete(String id);

}
